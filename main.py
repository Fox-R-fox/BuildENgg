import pygame
import sys

pygame.init()

# Set up
WIDTH, HEIGHT = 800, 600
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Simple PC Game")

# Colors
WHITE = (255, 255, 255)

# Load player image
player = pygame.image.load("assets/player.png")
player_rect = player.get_rect(center=(WIDTH // 2, HEIGHT // 2))

clock = pygame.time.Clock()

# Game loop
running = True
while running:
    screen.fill(WHITE)
    screen.blit(player, player_rect)

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    pygame.display.update()
    clock.tick(60)

pygame.quit()
sys.exit()
