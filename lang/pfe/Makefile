# $OpenBSD: Makefile,v 1.10 2009/06/29 20:21:53 sthen Exp $

COMMENT=	Portable Forth Environment

DISTNAME=	pfe-0.33.69
SHARED_LIBS +=  pfe                  33.69    # .33.69
SHARED_LIBS +=  pfemodule            33.69    # .33.69
SHARED_LIBS +=  pfe-0-forth          33.69    # .33.69
CATEGORIES=    	lang

HOMEPAGE=	http://pfe.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pfe/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--mandir=${PREFIX}/man

# i386 build fails due to a compiler bug with gcc 3.3
MODULES+=       gcc4
MODGCC4_ARCHES= i386
MODGCC4_LANGS=	c
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--with-regs
.endif

USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_REGRESS=	Yes

.include <bsd.port.mk>
