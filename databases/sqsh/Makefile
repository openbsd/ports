# $OpenBSD: Makefile,v 1.9 2003/05/12 18:02:44 sturm Exp $

DISTNAME=	sqsh-2.1
CATEGORIES=	databases shells

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"SQL shell"
HOMEPAGE=	http://www.sqsh.org/
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MODULES=	gettext
LIB_DEPENDS=	tds.0,ct.0::databases/freetds

CONFIGURE_STYLE= gnu old
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		SYBASE="${LOCALBASE}"
CONFIGURE_ARGS=	--with-readline --sysconfdir='${SYSCONFDIR}'

ALL_TARGET=	
NO_REGRESS=	Yes

post-patch:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/Makefile.in \
		${WRKSRC}/src/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/sqsh ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sqsh
	${INSTALL_DATA} ${WRKSRC}/doc/global.sqshrc \
		${PREFIX}/share/examples/sqsh/
	${INSTALL_MAN} ${WRKSRC}/doc/sqsh.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
