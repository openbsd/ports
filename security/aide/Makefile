# $OpenBSD: Makefile,v 1.1.1.1 2001/06/07 14:26:22 lebel Exp $

COMMENT=		"Advanced Intrusion Detection Environment"

V=			0.7
DISTNAME=		aide-${V}
CATEGORIES=		security
NEED_VERSION=		1.402

MAINTAINER=		David Lebel <lebel@openbsd.org>

BUILD_DEPENDS=		bison::devel/bison

HOMEPAGE=		http://www.cs.tut.fi/~rammer/aide.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.cs.tut.fi/~rammer/ \
			ftp://ftp.linux.hr/pub/aide/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		YACC="bison -y" \
			CPPFLAGS="-I${LOCALBASE}/include/" \
			LDFLAGS="-L${LOCALBASE}/lib/"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aide
	${INSTALL_DATA} ${WRKSRC}/doc/aide.conf ${PREFIX}/share/examples/aide

.include <bsd.port.mk>
