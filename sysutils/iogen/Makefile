# $OpenBSD: Makefile,v 1.7 2005/12/06 21:26:42 pvalchev Exp $

COMMENT=	"i/o generator"
PKGNAME=	iogen-1.04
CATEGORIES=	sysutils
DISTFILES=

# ISC
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_CHECKSUM=	Yes
NO_REGRESS=	Yes

CFLAGS+=	-DVERSION=\"${PKGNAME:S/iogen-//}\"
FAKE_FLAGS+=	BINDIR="${PREFIX}/bin" DESTDIR="${WRKINST}" MANDIR="${PREFIX}/man/cat"
MAKE_ENV=	CC="${CC}"
WRKDIST=	${WRKDIR}

post-extract:
	@lndir ${.CURDIR}/src ${WRKDIR}

.include <bsd.port.mk>
