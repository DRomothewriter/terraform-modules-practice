export default {
    async fetch(request, env) {
        const db = env.DB;

        await db.prepare(
            "CREATE TABLE IF NOT EXISTS visits (id INTEGER PRIMARY KEY AUTOINCREMENT, created_at TEEXT DEFAULT CURRENT_TIMESTAMP)").run();
        await db.prepare("INSERT INTO visits DEFAULT VALUES").run();

        const count = await db.prepare("SELECT COUNT(*) as total FROM visits").first();

        return Response.json({
            ok: true,
            message: "Worker funcionando con D1",
            visitas: count?.total ?? 0,
            url: request.url,
        });
    },
};