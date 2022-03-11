COMMENT =	combinatorics library/utility from FreeBSD
DISTNAME =	cmb-3.9.5
CATEGORIES =	sysutils

SHARED_LIBS +=	cmb                       0.0 # 0.0

HOMEPAGE =	https://github.com/ibara/cmb
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto m

MASTER_SITES =	https://github.com/ibara/cmb/releases/download/${DISTNAME}/

NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/lib/libcmb/cmb.h ${PREFIX}/include

.include <bsd.port.mk>
