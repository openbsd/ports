# $OpenBSD: Makefile,v 1.22 2014/07/05 14:08:04 naddy Exp $

BROKEN-powerpc=	does not build, error: lvalue required as increment operand

COMMENT=	Portable Forth Environment

DISTNAME=	pfe-0.33.69
SHARED_LIBS +=  pfe                  33.69    # .33.69
SHARED_LIBS +=  pfemodule            33.69    # .33.69
SHARED_LIBS +=  pfe-0-forth          33.69    # .33.69
CATEGORIES=    	lang
REVISION=	1

HOMEPAGE=	http://pfe.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pfe/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--mandir=${PREFIX}/man

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--with-regs
.endif

# this renames floating.so to libfloating.so before linking with it
USE_LIBTOOL=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_TEST=	Yes

.include <bsd.port.mk>
