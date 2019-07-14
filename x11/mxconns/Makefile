# $OpenBSD: Makefile,v 1.29 2019/07/14 02:16:52 naddy Exp $

COMMENT=		interactive X11 proxy with selective X request replacement

DISTNAME=		mxconns-3.1.10
CATEGORIES=		x11 security
REVISION=		0

HOMEPAGE=		http://cern.ch/mxconns/
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tgz

# Restrictive
PERMIT_PACKAGE=		No
PERMIT_DISTFILES=	No

WANTLIB += X11 Xau Xext Xm Xpm Xt c

LIB_DEPENDS=		x11/motif

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
