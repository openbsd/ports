# $OpenBSD: Makefile,v 1.14 2006/10/05 00:43:45 ian Exp $

COMMENT="compile Java source into .class files (quickly!)"

# Jikes, a fast Java compiler. 

DISTNAME=	jikes-1.22
PKGNAME=	${DISTNAME}p2
CATEGORIES=	lang
HOMEPAGE=	http://jikes.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jikes/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# IBM Public License
PERMIT_PACKAGE_CDROM=	"commercial contributor must indemnify all others"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial contributor must indemnify all others"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MODULES=	converters/libiconv

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
