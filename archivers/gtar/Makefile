# $OpenBSD: Makefile,v 1.21 2001/04/20 17:35:33 brad Exp $

COMMENT=	"GNU version of the traditional tar archiver"

DISTNAME=	tar-1.13.19
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers
NEED_VERSION=	1.384
MASTER_SITES=	ftp://alpha.gnu.org/gnu/tar/ \
		ftp://ftp.sunsite.org.uk/Mirrors/alpha.gnu.org/gnu/tar/ \
		ftp://ftp.funet.fi/pub/mirrors/alpha.gnu.org/gnu/tar/

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		DEFAULT_ARCHIVE="/dev/rst0"

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib -static"
.else
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"
.endif

.include <bsd.port.mk>
