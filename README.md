# Ollama + Qwen3 Setup for MacBook Pro M3 Pro

## Requirements

- Apple Silicon (M1/M2/M3)
- macOS Sonoma atau lebih baru
- Internet connection

---

## Quick Install (Recommended)

Install langsung tanpa clone repository:

### Menggunakan curl

```bash
curl -fsSL https://raw.githubusercontent.com/<username>/<repo>/main/install.sh | bash
```

### Menggunakan wget

```bash
wget -qO- https://raw.githubusercontent.com/<username>/<repo>/main/install.sh | bash
```

---

## Install Model Tertentu

Default installer akan menginstall:

```text
qwen3:8b
```

Untuk memilih model lain:

### Qwen3 14B

```bash
curl -fsSL https://raw.githubusercontent.com/<username>/<repo>/main/install.sh | bash -s qwen3:14b
```

atau

```bash
wget -qO- https://raw.githubusercontent.com/<username>/<repo>/main/install.sh | bash -s qwen3:14b
```

### Qwen2.5 Coder 7B

```bash
curl -fsSL https://raw.githubusercontent.com/<username>/<repo>/main/install.sh | bash -s qwen2.5-coder:7b
```

---

## Manual Install

Clone repository:

```bash
git clone https://github.com/<username>/<repo>.git
cd <repo>
```

Berikan permission:

```bash
chmod +x install.sh
```

Jalankan:

```bash
./install.sh
```

---

## Verify Installation

Cek versi Ollama:

```bash
ollama --version
```

Cek model yang sudah terinstall:

```bash
ollama list
```

Cek model yang sedang aktif:

```bash
ollama ps
```

---

## Start Chat

```bash
ollama run qwen3:8b
```

Contoh:

```text
>>> buatkan REST API Golang menggunakan Gin
```

---

## Pull Additional Models

### Qwen3 14B

```bash
ollama pull qwen3:14b
```

### Qwen2.5 Coder 7B

```bash
ollama pull qwen2.5-coder:7b
```

### DeepSeek Coder

```bash
ollama pull deepseek-coder-v2
```

---

## REST API

Ollama menyediakan API lokal:

```text
http://localhost:11434
```

Contoh request:

```bash
curl http://localhost:11434/api/generate \
-d '{
  "model":"qwen3:8b",
  "prompt":"buatkan CRUD Laravel Product"
}'
```

---

## Service Management

### Stop Model

```bash
ollama stop qwen3:8b
```

### Start Ollama

```bash
ollama serve
```

### Stop Ollama

Tekan:

```text
CTRL + C
```

---

## Resource Recommendation

| RAM | Recommended Model |
|------|------------------|
| 18 GB | Qwen3 8B |
| 36 GB | Qwen3 14B |
| 48 GB+ | Qwen3 32B |

---

## VS Code Integration

Direkomendasikan menggunakan:

- :contentReference[oaicite:0]{index=0}
- :contentReference[oaicite:1]{index=1}

Contoh konfigurasi Continue:

```yaml
models:
  - name: Qwen Local
    provider: ollama
    model: qwen3:8b
```

Workflow:

```text
VS Code
  ↓
Continue
  ↓
Ollama
  ↓
Qwen3
```

Semua kode tetap berjalan lokal tanpa biaya API bulanan.