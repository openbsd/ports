# OpenBSD Makefile for: wily
# Version required: 	0.13.36
# Date created:   	May 16 1998
# Whom: 		Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/17 03:01:58 angelos Exp $
#

DISTNAME=	wily-0.13.36
CATEGORIES=	plan9 editors
MASTER_SITES=	ftp://ftp.northsea.com/pub/plan9_unix/wily/wily/src/ \
		ftp://ftp.cs.york.ac.uk/pub/mhw/wily/src/ \
		ftp://ftp.cs.su.oz.au/gary/wily/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

USE_X11=	YES
GNU_CONFIGURE=	YES

WILYDOCDIR=	${PREFIX}/share/doc/wily
WILYDOCFILES=	index.html intro.html download.html credits.html FAQ.txt \
		onepage.html user.html idioms.html C.html python.html \
		perl.txt hack.html changes.txt AcmeVsWily.html Tcl.html \
		pythonpaper.html winmanager.html

# The default Wily makefile does not install any documentation.  Rectify.
post-install:
	strip ${PREFIX}/bin/wily
.if !defined(NOPORTDOCS)
	${MKDIR} ${WILYDOCDIR}
	set -e; for f in ${WILYDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/Doc/$${f} ${WILYDOCDIR}/$${f}; \
	done
.endif

.include <bsd.port.mk>
