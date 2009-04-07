# $OpenBSD: Makefile,v 1.4 2009/04/07 23:19:20 sthen Exp $

COMMENT=		Asterisk access for Nortel i2002/i2004/i2050 phones

DISTNAME=		chan_unistim-1.0.0.5e	# for Asterisk 1.4
PKGNAME=		${DISTNAME}p0
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		telephony

HOMEPAGE=		http://mlkj.net/UNISTIM/

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# GPL V2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://mlkj.net/UNISTIM/

BUILD_DEPENDS=		:asterisk->=1.4.22:telephony/asterisk
RUN_DEPENDS=		:asterisk->=1.4.22:telephony/asterisk

CFLAGS+=-pipe -Wall -Wmissing-prototypes -Wmissing-declarations \
	-D_REENTRANT -D_GNU_SOURCE -fPIC -O6 \
	-Wno-missing-prototypes -Wno-missing-declarations -DCRYPTO \
	-I ${PREFIX}/include
.if ${MACHINE_ARCH:L} == "powerpc"
CFLAGS+=-fsigned-char
.endif

MAKE_FLAGS=	-DHAVE_SYS_STAT_H=1 -DHAVE_SYS_UIO_H=1 \
		CC="${CC}" \
		CFLAGS="${CFLAGS}" \
		INSTALL_PREFIX="${PREFIX}" SYSCONFDIR='${SYSCONFDIR}'

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asterisk/chan_unistim
	${INSTALL_DATA} ${WRKSRC}/README  ${PREFIX}/share/examples/asterisk/chan_unistim
	${INSTALL_DATA} ${WRKSRC}/unistim.conf  ${PREFIX}/share/examples/asterisk/chan_unistim

.include <bsd.port.mk>
