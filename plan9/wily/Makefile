# $OpenBSD: Makefile,v 1.7 2000/06/07 00:52:09 espie Exp $

DISTNAME=	wily-0.13.41
CATEGORIES=	plan9 editors
MASTER_SITES=	ftp://ftp.cs.york.ac.uk/pub/mhw/wily/src/ \
		ftp://ftp.cs.su.oz.au/gary/wily/src/old/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_AUTOCONF=	Yes

WILYDOCDIR=	${PREFIX}/share/doc/wily
WILYTUTEDIR=	${WILYDOCDIR}/tute
WILYDOCFILES=	index.html intro.html download.html credits.html FAQ.html \
		onepage.html user.html idioms.html C.html python.html \
		hack.html AcmeVsWily.html Tcl.html pythonpaper.html \
		winmanager.html auug.html one.html example.gif thumb.gif \
		cartoon.gif FAQ.txt Tcl.txt changes.txt perl.txt Credits \
		fonts mouse tute/findword tute/script tute/start tute/hello.c \
		tute/send_to_gary

do-install:
	@${INSTALL_PROGRAM} ${WRKBUILD}/wily/wily ${PREFIX}/bin
	@${INSTALL_DATA_DIR}  ${WILYDOCDIR}
	@${INSTALL_DATA_DIR} ${WILYTUTEDIR}
	@set -e; for f in ${WILYDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/Doc/$$f ${WILYDOCDIR}/$$f; \
	done

.include <bsd.port.mk>
