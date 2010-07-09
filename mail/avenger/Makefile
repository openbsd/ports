# $OpenBSD: Makefile,v 1.8 2010/07/09 06:01:07 landry Exp $

COMMENT=		anti-spam SMTP server
DISTNAME=		avenger-0.7.4
PKGNAME=		${DISTNAME}p2
CATEGORIES=		mail

HOMEPAGE=		http://www.mailavenger.org/

MAINTAINER=		David Mazieres (http://www.scs.stanford.edu/~dm/addr/)

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto m pcap ssl stdc++

MASTER_SITES=		${HOMEPAGE}/dist/

USE_LIBTOOL=		gnu
LIB_DEPENDS=		lib/db4/db.>=4:db->=4,<5:databases/db/v4

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
CONFIGURE_ARGS+=        --enable-sasl
LIB_DEPENDS+=		sasl2::security/cyrus-sasl2
.else
CONFIGURE_ARGS+=	--disable-sasl
.endif

.include <bsd.port.mk>
