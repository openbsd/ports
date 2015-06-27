# $OpenBSD: Makefile,v 1.27 2015/06/27 16:54:22 ajacoutot Exp $

COMMENT=		interactive X11 proxy with selective X request replacement

DISTNAME=		mxconns-3.1.10
CATEGORIES=		x11 security

HOMEPAGE=		http://cern.ch/mxconns/
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tgz

# Restrictive
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

WANTLIB += X11 Xau Xext Xm Xpm Xt c

LIB_DEPENDS=		x11/openmotif

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		-optim "${CFLAGS}" -debug
MAKE_FLAGS=		CC="${CC}"

NO_TEST=	Yes

pre-build:
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/*.[ch]

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mxconns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/mxconns.man \
		${PREFIX}/man/man1/mxconns.1

.include <bsd.port.mk>
