# $OpenBSD: Makefile,v 1.40 2006/11/30 20:37:29 naddy Exp $

COMMENT=	"GNU version of the traditional tar archiver"

DISTNAME=	tar-1.16
PKGNAME=	g${DISTNAME}p0
CATEGORIES=	archivers
HOMEPAGE=	http://www.gnu.org/software/tar/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		all
MASTER_SITES=	${MASTER_SITE_GNU:=tar/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext
RUN_DEPENDS=	:bzip2-*:archivers/bzip2
REGRESS_DEPENDS=:autoconf-2.60:devel/autoconf/2.60
REGRESS_FLAGS=	AUTOCONF_VERSION=2.60

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib ${LDSTATIC}" \
		DEFAULT_ARCHIVE=/dev/rst0 \
		DEFAULT_RMT_COMMAND=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
LDSTATIC=	-static
MODULES=
.else
LDSTATIC=
WANTLIB=	c
.endif

.include <bsd.port.mk>
