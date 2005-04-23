# $OpenBSD: Makefile,v 1.35 2005/04/23 15:29:45 espie Exp $

COMMENT=	"GNU version of the traditional tar archiver"

DISTNAME=	tar-1.15.1
PKGNAME=	g${DISTNAME}p1
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

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib ${LDSTATIC}" \
		DEFAULT_ARCHIVE=/dev/rst0 \
		DEFAULT_RMT_COMMAND=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
LDSTATIC=	-static
.else
LDSTATIC=
WANTLIB=	c
.endif

.include <bsd.port.mk>
