# $OpenBSD: Makefile,v 1.15 2011/03/29 12:03:53 pea Exp $

COMMENT=		anti-spam SMTP server
DISTNAME=		avenger-0.8.1
CATEGORIES=		mail

HOMEPAGE=		http://www.mailavenger.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m pcap ssl stdc++ lib/db4/db>=4

MASTER_SITES=		${HOMEPAGE}/dist/

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
LIB_DEPENDS=		databases/db/v4

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-db=${LOCALBASE} \
			--with-etcdir=${SYSCONFDIR}/avenger
CONFIGURE_ENV+=		WFLAGS="-Wall" \
			sfs_cv_dev_random="/dev/arandom"

MAKE_FLAGS+=		CFLAGS+=-DHAVE_GETPEEREID \
			CXXFLAGS+=-DHAVE_GETPEEREID

FLAVORS=                sasl2
FLAVOR?=

.if ${FLAVOR:L:Msasl2}
CONFIGURE_ARGS +=        --enable-sasl
LIB_DEPENDS +=		security/cyrus-sasl2
WANTLIB +=		sasl2
.else
CONFIGURE_ARGS +=	--disable-sasl
.endif

.include <bsd.port.mk>
