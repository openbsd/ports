# $OpenBSD: Makefile,v 1.26 2013/03/11 11:46:14 espie Exp $

COMMENT=	interactive X11 proxy with selective X request replacement

DISTNAME=	mxconns-3.1.8
REVISION=	3
CATEGORIES=	x11 security

HOMEPAGE=	http://cern.ch/mxconns/
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

# Restrictive
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

WANTLIB=	X11 Xau Xext Xpm Xt c m Xm

LIB_DEPENDS+=	x11/openmotif

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	-optim "${CFLAGS}" -debug
MAKE_FLAGS =	CC="${CC}" \
		MOTIF_LIB="${MOTIFLIB} -lm -lXm"

NO_TEST=	Yes

pre-build:
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/*.[ch]

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mxconns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/mxconns.man \
		${PREFIX}/man/man1/mxconns.1

.include <bsd.port.mk>
