# $OpenBSD: Makefile,v 1.52 2010/03/28 18:35:00 naddy Exp $

COMMENT=	GNU version of the traditional tape archiver

DISTNAME=	tar-1.23
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers
HOMEPAGE=	http://www.gnu.org/software/tar/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=tar/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext
# only force dependencies for compressors that have a single-letter option
RUN_DEPENDS=	::archivers/bzip2 ::archivers/xz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g \
		--disable-silent-rules
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDSTATIC}" \
		DEFAULT_ARCHIVE=/dev/rst0 \
		DEFAULT_RMT_COMMAND=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
LDSTATIC=	-static
MODULES=
BUILD_DEPENDS=	:gettext->=0.17:devel/gettext
CONFIGURE_ENV+=	SHLIBEXT=""
.else
LDSTATIC=
WANTLIB=	c
.endif

REGRESS_DEPENDS=:autoconf-2.63:devel/autoconf/2.63
REGRESS_FLAGS=	AUTOCONF_VERSION=2.63

.include <bsd.port.mk>
