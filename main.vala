void main() {

	int score = 500;

	while (score > 0){
		stdout.printf("[Enter] to play");
		stdin.read_line();
		int slots[3] = new int[3];
	
		stdout.printf("[ ");
		for (int i = 0; i < 3; i++){
			slots[i] = Random.int_range(1, 7);
			stdout.printf("%d ", slots[i]);
		}
		stdout.printf("]\n");

		bool won = (slots[0] == slots[1] && slots[1] == slots[2]);
		int change = (won ? slots[0] * 8 : -1);
		score += change;
		stdout.printf("You have %s %d coins, resulting in %d coins\n", (won ? "won" : "\"won\""), change, score);
	}
}
