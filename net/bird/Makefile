# $OpenBSD: Makefile,v 1.1.1.1 2009/08/17 23:03:58 sthen Exp $

COMMENT-main=	bird internet routing daemon
COMMENT-doc=	bird internet routing daemon (documentation)

V=		1.1.1
DISTNAME=	bird-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME:S/-/-doc-/}${EXTRACT_SUFX}

CATEGORIES=	net

HOMEPAGE=	http://bird.network.cz/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=	c ncurses readline

MULTI_PACKAGES=	-main -doc
FULLPKGNAME-doc=bird-doc-$V
FULLPKGPATH-doc=net/bird,-doc
FLAVORS=	v6
FLAVOR?=
SUBST_VARS+=	SIX

.if ${FLAVOR:L:Mv6}
FULLPKGNAME-main= bird-v6-$V
SIX=		6
.else
PKGNAME-main=	bird-$V
.endif

MASTER_SITES=	ftp://bird.network.cz/pub/bird/

BUILD_DEPENDS=	::devel/m4

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/bird

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--localstatedir=/var

.if ${FLAVOR:L:Mv6}
CONFIGURE_ARGS+=--enable-ipv6
.endif

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/tools

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bird
	${INSTALL_DATA} ${WRKDIR}/bird-doc-$V/doc/* ${PREFIX}/share/doc/bird/
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/bird/

.include <bsd.port.mk>
