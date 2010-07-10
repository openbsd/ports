# $OpenBSD: Makefile,v 1.12 2010/07/10 20:50:55 naddy Exp $

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

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--with-regs
.endif

USE_LIBTOOL=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_REGRESS=	Yes

.include <bsd.port.mk>
