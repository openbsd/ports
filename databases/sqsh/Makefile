# $OpenBSD: Makefile,v 1.1.1.1 2001/08/11 16:23:16 naddy Exp $
# vim:ts=8

DISTNAME=	sqsh-1.7
CATEGORIES=	databases shells
NEED_VERSION=	1.433

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"SQL shell"
HOMEPAGE=	http://www.voicenet.com/~gray/sqsh.html
MASTER_SITES=	http://www.users.voicenet.com/~gray/
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	Joshua Stein <jcs@rt.fm>

LIB_DEPENDS=	intl.1::devel/gettext \
		tds.0::databases/freetds

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		SYBASE="${LOCALBASE}"
CONFIGURE_ARGS=	--with-readline
ALL_TARGET=	

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sqsh ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sqsh
	${INSTALL_DATA} ${WRKSRC}/doc/sample.sqshrc \
		${PREFIX}/share/examples/sqsh
	${INSTALL_MAN} ${WRKSRC}/doc/sqsh.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
