# $OpenBSD: Makefile,v 1.9 2011/01/22 19:59:14 naddy Exp $

COMMENT =		hide awful SSL API in a sane interface
V =			0.9.1
REVISION =		0
EPOCH=			0
DISTNAME =		assl-${V}

SHARED_LIBS =		assl 0.9

CATEGORIES =		security devel

HOMEPAGE =		http://opensource.conformal.com/wiki/Assl

MAINTAINER =		Chris Kuethe <ckuethe@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://opensource.conformal.com/snapshots/assl/
EXTRACT_SUFX =		.tgz

NO_REGRESS =		Yes
EG_DIR =		${PREFIX}/share/examples/assl
MAKE_FLAGS=		PREFIX=${PREFIX}

.if ${MACHINE_ARCH:Mmips64*}
EXTRA_CFLAGS=   -D__BUILTIN_HACK
# See bsd.lib.mk:162
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

do-configure:
	printf "major=${LIBassl_VERSION:R}\nminor=${LIBassl_VERSION:E}\n" \
	    > ${WRKSRC}/shlib_version

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	cd ${WRKSRC}/examples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${EG_DIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${EG_DIR}/{} \;

.include <bsd.port.mk>
