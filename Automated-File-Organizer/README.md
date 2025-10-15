# Automated File Organizer

## Description
A powerful Ubuntu Bash script to automatically organize files in the Downloads folder and its subfolders by type.  
Files are moved into folders: Images, Documents, Scripts, Videos, Archives, Music, and Text Files.

## Features
- Recursively scans the `~/Downloads` directory.
- Moves files into respective folders:
  - Images → jpg, png, jpeg, gif
  - Documents → pdf, docx, xlsx, pptx
  - Scripts → sh, py, js
  - Videos → mp4, mkv, mov
  - Archives → zip, tar, gz, rar
  - Music → mp3, wav
  - Text Files → txt, md
- Creates folders if they don’t exist.
- Logs all moved files in `organizer.log`.
- Can be scheduled with cron for automatic execution.

## Usage
1. Download or clone the repository.
2. Make the script executable:
   ```bash
   chmod +x file_organizer.sh
   ```
3. Run the script:
   ```bash
   ./file_organizer.sh
   ```
4. (Optional) Schedule automatic execution with cron:
   ```bash
   crontab -e
   ```
   Add the line:
   ```bash
   0 * * * * /home/username/Downloads/Automated-File-Organizer/file_organizer.sh
   ```

## License
MIT License
