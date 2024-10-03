% Statistik Pemain
players = {'Messi', 'Ronaldo'};
apps = [1069, 1237];
assists = [374, 254];
goals = [838, 901];
mins_per_goal = [105, 112];
mins_per_goal_contribution = [72, 87];

% Menampilkan statistik
disp('Statistik Pemain:');
disp('Pemain    Apps    Assists    Goals    Mins per Goal    Mins per Goal Contribution');

% Menampilkan statistik untuk Messi
disp(['Messi     ', num2str(apps(1)), '    ', num2str(assists(1)), '        ', num2str(goals(1)), '      ', num2str(mins_per_goal(1)), '              ', num2str(mins_per_goal_contribution(1))]);

% Menampilkan statistik untuk Ronaldo
disp(['Ronaldo   ', num2str(apps(2)), '    ', num2str(assists(2)), '        ', num2str(goals(2)), '      ', num2str(mins_per_goal(2)), '              ', num2str(mins_per_goal_contribution(2))]);

% Memilih kriteria
disp(' ');
disp('Pilih kriteria untuk membandingkan pemain:');
disp('1. Apps');
disp('2. Assists');
disp('3. Goals');
disp('4. Mins per Goal');
disp('5. Mins per Goal Contribution');
choice = input('Masukkan pilihan Anda (1-5): ');

% Membandingkan berdasarkan pilihan tanpa loop
if choice == 1
    if apps(1) > apps(2)
        i = 1; % Messi
    else
        i = 2; % Ronaldo
    end
elseif choice == 2
    if assists(1) > assists(2)
        i = 1; % Messi
    else
        i = 2; % Ronaldo
    end
elseif choice == 3
    if goals(1) > goals(2)
        i = 1; % Messi
    else
        i = 2; % Ronaldo
    end
elseif choice == 4
    if mins_per_goal(1) < mins_per_goal(2) % lebih sedikit lebih baik
        i = 1; % Messi
    else
        i = 2; % Ronaldo
    end
elseif choice == 5
    if mins_per_goal_contribution(1) < mins_per_goal_contribution(2) % lebih sedikit lebih baik
        i = 1; % Messi
    else
        i = 2; % Ronaldo
    end
else
    disp('Pilihan tidak valid.');
    return;
end

% Menampilkan pemain terpilih
fprintf('Pemain terbaik berdasarkan kriteria tersebut adalah: %s\n', players{i});

