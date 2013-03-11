# $OpenBSD: Makefile,v 1.22 2013/03/11 11:23:50 espie Exp $

COMMENT=		anti-spam SMTP server
DISTNAME=		avenger-0.8.3
CATEGORIES=		mail

HOMEPAGE=		http://www.mailavenger.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m pcap ssl stdc++ lib/db4/db>=4

MASTER_SITES=		${HOMEPAGE}/dist/

USE_LIBTOOL=		Yes
LIB_DEPENDS=		databases/db/v4

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-db=${LOCALBASE} \
			--with-etcdir=${SYSCONFDIR}/avenger
CONFIGURE_ENV+=		WFLAGS="-Wall"

MAKE_FLAGS+=		CFLAGS+=-DHAVE_GETPEEREID \
			CXXFLAGS+=-DHAVE_GETPEEREID

FLAVORS=                sasl2
FLAVOR?=

.if ${FLAVOR:Msasl2}
CONFIGURE_ARGS +=        --enable-sasl
LIB_DEPENDS +=		security/cyrus-sasl2
WANTLIB +=		sasl2
.else
CONFIGURE_ARGS +=	--disable-sasl
.endif

.include <bsd.port.mk>
