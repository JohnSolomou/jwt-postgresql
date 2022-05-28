import pg from "pg";
const { Pool } = pg;
import dotenv from "dotenv";
dotenv.config();
let localPoolConfig = {
  user: "postgres",
  password: process.env.PG_PASSWORD,
  host: "localhost",
  port: "5432",
  database: "jwttutorial",
};

const poolConfig = process.env.DATABASE_URL
  ? {
      ConnectionString: process.env.DATABASE_URL,
      ssl: { rejectUnauthorized: false },
    }
  : localPoolConfig;

const pool = new Pool(poolConfig);
export default pool;
