# $OpenBSD: Makefile,v 1.23 2015/01/22 18:41:16 naddy Exp $

COMMENT=compile Java source into .class files (quickly!)

# Jikes, a fast Java compiler. 

DISTNAME=	jikes-1.22
REVISION=	4
CATEGORIES=	lang
HOMEPAGE=	http://jikes.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jikes/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# IBM Public License
PERMIT_PACKAGE_CDROM=	commercial contributor must indemnify all others
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c m stdc++

MODULES=	converters/libiconv

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

FAKE_FLAGS+=	docdir=${PREFIX}/share/doc/jikes/

.include <bsd.port.mk>
