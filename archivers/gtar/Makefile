# $OpenBSD: Makefile,v 1.24 2001/09/23 05:32:18 brad Exp $

COMMENT=	"GNU version of the traditional tar archiver"

DISTNAME=	tar-1.13.23
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers
NEED_VERSION=	1.460
MASTER_SITES=	ftp://alpha.gnu.org/gnu/tar/ \
		ftp://ftp.sunsite.org.uk/Mirrors/alpha.gnu.org/gnu/tar/ \
		ftp://ftp.funet.fi/pub/mirrors/alpha.gnu.org/gnu/tar/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gettext
RUN_DEPENDS+=	:bzip2-*:archivers/bzip2

SEPARATE_BUILD=	flavored

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDSTATIC}" \
		DEFAULT_ARCHIVE="/dev/rst0" \
		MAKEINFO="makeinfo --no-split"

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
LDSTATIC=	-static
.else
LDSTATIC=
.endif

.include <bsd.port.mk>
