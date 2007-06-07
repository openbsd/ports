# $OpenBSD: Makefile,v 1.2 2007/06/07 14:36:46 aanriot Exp $

COMMENT=	true web content filtering for all
DISTNAME=	dansguardian-2.9.8.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www net

HOMEPAGE=	http://www.dansguardian.org/

MAINTAINER=	Bartosz Kuzma <bartosz.kuzma@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ z

MASTER_SITES=		http://www.obsd.fr/OpenBSD/distfiles/

LIB_DEPENDS=		pcre.>=1,pcreposix.>=1::devel/pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--localstatedir=/var \
		--with-proxygroup=_dansguardian \
		--with-proxyuser=_dansguardian

FLAVORS=clamav
FLAVOR?=

.if ${FLAVOR:L:Mclamav}
WANTLIB+=	bz2 crypto curl gmp iconv idn pthread ssl
LIB_DEPENDS+=	clamav.>=1::security/clamav
CONFIGURE_ARGS+=--enable-clamav
.endif

FAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples \
		rel_group=_dansguardian rel_user=_dansguardian

.include <bsd.port.mk>
