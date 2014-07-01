# $OpenBSD: Makefile,v 1.34 2014/07/01 20:38:44 sthen Exp $

COMMENT-main=	BIRD internet routing daemon
COMMENT-doc=	BIRD internet routing daemon (documentation)

V=		1.4.3
REVISION=	0
DISTNAME=	bird-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME:S/-/-doc-/}${EXTRACT_SUFX}

CATEGORIES=	net

HOMEPAGE=	http://bird.network.cz/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main=	c ncurses readline

MULTI_PACKAGES=	-main -doc
FULLPKGNAME-doc=bird-doc-$V
FULLPKGPATH-doc=net/bird,-doc

# IPv6 support must be built with separate flags, however the filenames
# do not conflict, so the two packages may be installed together.
FLAVORS=	v6
FLAVOR?=
SUBST_VARS+=	SIX

.if ${FLAVOR:Mv6}
FULLPKGNAME-main= bird-v6-$V
FULLPKGPATH-main= net/bird,-main,v6
SIX=		6
.else
PKGNAME-main=	bird-$V
.endif

MASTER_SITES=	ftp://bird.network.cz/pub/bird/

BUILD_DEPENDS=	devel/m4 \
		devel/bison

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/bird

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.if ${FLAVOR:Mv6}
CONFIGURE_ARGS+=--enable-ipv6
.endif

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/tools

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bird
	${INSTALL_DATA} ${WRKDIR}/bird-doc-$V/doc/* ${PREFIX}/share/doc/bird/
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/bird/

.include <bsd.port.mk>
