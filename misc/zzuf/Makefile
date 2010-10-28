# $OpenBSD: Makefile,v 1.8 2010/10/28 10:17:54 steven Exp $

COMMENT=		zzuf is a transparent application input fuzzer

DISTNAME=		zzuf-0.13
REVISION=		1
CATEGORIES=		misc
MASTER_SITES=		http://libcaca.zoy.org/files/zzuf/

# License: WTFPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes
USE_LIBTOOL =		Yes

pre-configure:
	perl -pi -e 's/zzcat/zzufcat/g' ${WRKSRC}/doc/zzcat.1.in

post-install:
	cd ${PREFIX}/bin && mv zzcat zzufcat
	cd ${PREFIX}/man/man1 && mv zzcat.1 zzufcat.1

.include <bsd.port.mk>
