# $OpenBSD: Makefile,v 1.4 1999/12/08 23:51:57 brad Exp $

DISTNAME=	wily-0.13.41
CATEGORIES=	plan9 editors
MASTER_SITES=	ftp://ftp.cs.york.ac.uk/pub/mhw/wily/src/ \
		ftp://ftp.cs.su.oz.au/gary/wily/src/old/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

SEPARATE_BUILD=	simple
USE_X11=	yes
USE_AUTOCONF=	yes

WILYDOCDIR=	${PREFIX}/share/doc/wily
WILYTUTEDIR=	${WILYDOCDIR}/tute
WILYDOCFILES=	index.html intro.html download.html credits.html FAQ.html \
		onepage.html user.html idioms.html C.html python.html \
		hack.html AcmeVsWily.html Tcl.html pythonpaper.html \
		winmanager.html auug.html one.html example.gif thumb.gif \
		cartoon.gif FAQ.txt Tcl.txt changes.txt perl.txt Credits \
		fonts mouse tute/findword tute/script tute/start tute/hello.c \
		tute/send_to_gary

post-install:
	@mkdir -p ${WILYDOCDIR}
	@mkdir -p ${WILYTUTEDIR}
	@strip ${PREFIX}/bin/wily
	@set -e; for f in ${WILYDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/Doc/$${f} ${WILYDOCDIR}/$${f}; \
	done

.include <bsd.port.mk>
