/***************************************************************************
 * Circuit
 * Copyright (C) 2002 Nicolas George
 ***************************************************************************/

/*
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 *  1. Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *  2. Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
 * EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/* build: gcc -Wall -o circuit `gtk-config --cflags --libs` circuit.c */

#include <gtk/gtk.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <assert.h>

typedef struct {
    unsigned links : 6;
    unsigned locked : 1;
    short nbour[6];
} Cell;

/*   2     1 2
   0 + 1  0 + 3
     3     5 4
*/

int torus = 0;
int hexagon = 0;
int width, height, cells, nbours;

Cell *board;

static int cell_x, cell_y, cell_w;
static GdkGC *gc_good = NULL, *gc_bad, *gc_cell, *gc_locked, *gc_back;
static int finished = 0;
static GTimer *timer = NULL;

static unsigned
rotate(unsigned l, unsigned r)
{
    unsigned m;

    m = (1 << nbours) - 1;
    r += nbours;
    r %= nbours;
    return(((l << r) | (l >> (nbours - r))) & m);
}

static int
opposite(int l)
{
    return((l + nbours / 2) % nbours);
}

static int
good_link(int cell, int link)
{
    int n;

    n = board[cell].nbour[link];
    return((((board[cell].links >> link) ^
	(n == -1 ? 0 : (board[n].links >> opposite(link)))) & 1) == 0);
}

static void
generate_board(void)
{
    int x, y, o;

    cells = width * height;
    board = g_new(Cell, cells);
    if(!hexagon) {
	nbours = 4;
	for(y = 0; y < height; y++) {
	    for(x = 0; x < width; x++) {
		o = x + y * width;
		board[o].nbour[0] = o - 1 + (x == 0 ? width : 0);
		board[o].nbour[2] = o + 1 - (x == width - 1 ? width : 0);
		board[o].nbour[1] = o - width + (y == 0 ? cells : 0);
		board[o].nbour[3] = o + width - (y == height - 1 ? cells : 0);
	    }
	}
	if(!torus) {
	    for(x = 0; x < width; x++) {
		board[x].nbour[1] = -1;
		board[x + cells - width].nbour[3] = -1;
	    }
	    for(y = 0; y < height; y++) {
		board[y * width].nbour[0] = -1;
		board[y * width + width - 1].nbour[2] = -1;
	    }
	}
    } else {
	nbours = 6;
	for(y = 0; y < height; y++) {
	    for(x = 0; x < width; x++) {
		int xv1, xv2, yv1, yv2;

		o = x + y * width;
		board[o].nbour[0] = o - 1 + (x == 0 ? width : 0);
		board[o].nbour[3] = o + 1 - (x == width - 1 ? width : 0);
		if(y % 2 == 0) {
		    xv1 = x == 0 ? width - 1 : x - 1;
		    xv2 = x;
		} else {
		    xv1 = x;
		    xv2 = x == width - 1 ? 0 : x + 1;
		}
		yv1 = y == 0 ? height - 1 : y - 1;
		yv2 = y == height - 1 ? 0 : y + 1;
		board[o].nbour[1] = xv1 + yv1 * width;
		board[o].nbour[4] = xv2 + yv2 * width;
		board[o].nbour[2] = xv2 + yv1 * width;
		board[o].nbour[5] = xv1 + yv2 * width;
	    }
	}
	if(!torus) {
	    for(x = 0; x < width; x++) {
		board[x].nbour[1] = -1;
		board[x].nbour[2] = -1;
		board[x + cells - width].nbour[4] = -1;
		board[x + cells - width].nbour[5] = -1;
	    }
	    for(y = 0; y < height; y++) {
		board[y * width].nbour[0] = -1;
		board[y * width + width - 1].nbour[3] = -1;
		if(y % 2 == 0) {
		    board[y * width].nbour[1] = -1;
		    board[y * width].nbour[5] = -1;
		} else {
		    board[y * width + width - 1].nbour[2] = -1;
		    board[y * width + width - 1].nbour[4] = -1;
		}
	    }
	} else {
	    if(height % 2 != 0) {
		g_printerr("Hexagon torus must have an even height.\n");
		exit(1);
	    }
	}
    }
    for(x = 0; x < cells; x++) {
	board[x].locked = 0;
	board[x].links = rand() % (1 << nbours);
	for(y = 0; y < nbours; y++) {
	    int n;

	    n = board[x].nbour[y];
	    assert(n == -1 || board[n].nbour[opposite(y)] == x);
	    if(n == -1) {
		board[x].links &= ~(1 << y);
	    } else {
		if(board[x].links & (1 << y))
		    board[n].links |= 1 << opposite(y);
		else
		    board[n].links &= ~(1 << opposite(y));
	    }
	}
    }
    for(x = 0; x < cells; x++) {
	board[x].links = rotate(board[x].links, rand() % nbours);
    }
}

static gboolean
window_deleted(GtkWidget *window)
{
    gtk_main_quit();
    return(TRUE);
}

static void
area_allocated(GtkWidget *area, GtkAllocation *size)
{
    int w, wb;

    wb = width * 2 + hexagon;
    cell_w = (size->width - 2) / wb;
    w = (size->height - 2) / (height * 2);
    if(w < cell_w)
	cell_w = w;
    cell_x = size->x + (size->width - (cell_w * wb)) / 2;
    cell_y = size->y + (size->height - (cell_w * height * 2)) / 2;
    if(area->window != NULL)
	gdk_window_clear(area->window);
}

static GdkGC *
new_gc_color(GtkWidget *window, int r, int g, int b, GdkColor *col)
{
    GdkGCValues gv;
    GdkGC *gc;

    if(col == NULL) {
	gv.foreground.red = r * 65535 / 100;
	gv.foreground.green = g * 65535 / 100;
	gv.foreground.blue = b * 65535 / 100;
	gdk_colormap_alloc_color(gtk_widget_get_colormap(window),
	    &gv.foreground, FALSE, TRUE);
    } else {
	gv.foreground = *col;
    }
    gc = gdk_gc_new_with_values(window->window, &gv, GDK_GC_FOREGROUND);
    return(gc);
}

static GdkGC *
link_gc(int cell, int link)
{
    return(((board[cell].links >> link) & 1) ? good_link(cell, link) ?
	gc_good : gc_bad : gc_back);
}


static void
draw_cell(GdkWindow *w, int x, int y, int cell)
{
    int x0, y0, o;
    GdkGC *gc;

    x0 = cell_x + (x * 2 + 1) * cell_w;
    y0 = cell_y + (y * 2 + 1) * cell_w;
    if(hexagon && y % 2 != 0)
	x0 += cell_w;
    o = x + y * width;
    gc = board[cell].locked ? gc_locked : gc_cell;
    if(hexagon) {
	gdk_draw_line(w, link_gc(o, 0), x0, y0, x0 - cell_w, y0);
	gdk_draw_line(w, link_gc(o, 3), x0, y0, x0 + cell_w, y0);
	gdk_draw_line(w, link_gc(o, 1), x0, y0, x0 - cell_w / 2, y0 - cell_w);
	gdk_draw_line(w, link_gc(o, 4), x0, y0, x0 + cell_w / 2, y0 + cell_w);
	gdk_draw_line(w, link_gc(o, 2), x0, y0, x0 + cell_w / 2, y0 - cell_w);
	gdk_draw_line(w, link_gc(o, 5), x0, y0, x0 - cell_w / 2, y0 + cell_w);
    } else {
	gdk_draw_line(w, link_gc(o, 0), x0, y0, x0 - cell_w, y0);
	gdk_draw_line(w, link_gc(o, 2), x0, y0, x0 + cell_w, y0);
	gdk_draw_line(w, link_gc(o, 1), x0, y0, x0, y0 - cell_w);
	gdk_draw_line(w, link_gc(o, 3), x0, y0, x0, y0 + cell_w);
    }
    gdk_draw_arc(w, gc, TRUE, x0 - cell_w / 4, y0 - cell_w / 4,
	cell_w / 2, cell_w / 2, 0, 64 * 360);
}

static int
count_bad_links(void)
{
    int n = 0, i, j;

    for(i = 0; i < cells; i++) {
	for(j = 0; j < nbours; j++)
	    if(!good_link(i, j))
		n++;
    }
    return(n);
}

static void
area_exposed(GtkWidget *area, GdkEventExpose *event)
{
    int x, y;

    if(gc_good == NULL) {
	gc_good = new_gc_color(area, 0, 0, 100, NULL);
	gc_bad = new_gc_color(area, 100, 0, 70, NULL);
	gc_cell = new_gc_color(area, 0, 50, 100, NULL);
	gc_locked = new_gc_color(area, 0, 35, 70, NULL);
	gc_back = new_gc_color(area, 0, 0, 0, &area->style->bg[0]);
    }
    if(timer == NULL) {
	timer = g_timer_new();
	g_timer_start(timer);
    }
    for(y = 0; y < height; y++) {
	for(x = 0; x < width; x++) {
	    draw_cell(area->window, x, y, x + y * width);
	}
    }
}

static gboolean
area_button_press(GtkWidget *area, GdkEventButton *event)
{
    int x, y, o, i, n;

    if(event->type != GDK_BUTTON_PRESS)
	return(FALSE);
    if(finished) {
	gdk_beep();
	return(FALSE);
    }
    x = event->x - cell_x;
    y = event->y - cell_y;
    if(y < 0 || y >= cell_w * height * 2)
	return(TRUE);
    y /= (cell_w * 2);
    if(hexagon && y % 2 != 0)
	x -= cell_w;
    if(x < 0 || x >= cell_w * width * 2)
	return(TRUE);
    x /= (cell_w * 2);
    assert(x >= 0 && x < width);
    assert(y >= 0 && y < height);
    o = x + y * width;
    if(event->button == 2 || (event->state & GDK_SHIFT_MASK) != 0) {
	board[o].locked = !board[o].locked;
    } else {
	if(board[o].locked)
	    return(TRUE);
	board[o].links = rotate(board[o].links, event->button == 1 ? -1 : 1);
    }
    draw_cell(area->window, x, y, o);
    for(i = 0; i < nbours; i++) {
	n = board[o].nbour[i];
	if(n == -1)
	    continue;
	draw_cell(area->window, n % width, n / width, n);
    }
    if(count_bad_links() == 0) {
	GtkWidget *window, *label;
	char *msg;

	finished = 1;
	g_timer_stop(timer);
	msg = g_strdup_printf("Congratulations.\n"
	    "You have finished a %d×%d%s%s circuit in %.1f seconds.",
	    width, height,
	    hexagon ? " hexagonal" : "",
	    torus ? " toroidal" : "",
	    g_timer_elapsed(timer, NULL));
	g_print("%s\n", msg);
	window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_container_set_border_width(GTK_CONTAINER(window), 8);
	label = gtk_label_new(msg);
	gtk_container_add(GTK_CONTAINER(window), label);
	gtk_window_set_transient_for(GTK_WINDOW(window),
	    GTK_WINDOW(gtk_widget_get_toplevel(area)));
	gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_MOUSE);
	gtk_widget_show_all(window);
	g_free(msg);
    }
    return(TRUE);
}

static void
create_window(void)
{
    GtkWidget *window, *vbox, *area;

    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window), "Circuit");
    gtk_window_set_default_size(GTK_WINDOW(window), 1024, 768);
    vbox = gtk_vbox_new(FALSE, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);
    area = gtk_drawing_area_new();
    gtk_box_pack_start(GTK_BOX(vbox), area, TRUE, TRUE, 0);
    gtk_widget_set_usize(area, 8 * (width * 2 + hexagon), 16 * height);
    gtk_widget_set_events(area, GDK_BUTTON_PRESS_MASK);

    gtk_signal_connect(GTK_OBJECT(window), "delete_event",
	GTK_SIGNAL_FUNC(window_deleted), NULL);
    gtk_signal_connect(GTK_OBJECT(area), "size_allocate",
	GTK_SIGNAL_FUNC(area_allocated), NULL);
    gtk_signal_connect(GTK_OBJECT(area), "expose_event",
	GTK_SIGNAL_FUNC(area_exposed), NULL);
    gtk_signal_connect(GTK_OBJECT(area), "button_press_event",
	GTK_SIGNAL_FUNC(area_button_press), NULL);

    gtk_widget_show_all(window);
}

int
main(int argc, char **argv)
{
    gtk_init(&argc, &argv);
    srand(time(NULL));
    while(argc > 1 && argv[1][0] == '-') {
	if(strcmp(argv[1], "-t") == 0) {
	    torus = 1;
	} else if(strcmp(argv[1], "-6") == 0) {
	    hexagon = 1;
	} else if(strcmp(argv[1], "-h") == 0) {
	    g_print("Usage: circuit [-t] [-6] width height\n");
	    return(0);
	} else {
	    g_printerr("Unknown option: %s\n", argv[1]);
	    return(1);
	}
	argv++;
	argc--;
    }
    if(argc != 3) {
	g_printerr("Not enough arguments.\n");
	return(1);
    }
    width = atoi(argv[1]);
    height = atoi(argv[2]);
    if(width < 1 || height < 1) {
	g_printerr("Invalid size.\n");
	return(1);
    }
    generate_board();
    create_window();
    gtk_main();

    return(0);
}
