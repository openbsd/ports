# $OpenBSD: Makefile,v 1.15 2004/02/08 10:36:02 sturm Exp $

DISTNAME=	freetds-0.62
CATEGORIES=	databases

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"project to document and implement the TDS protocol"
HOMEPAGE=	http://www.freetds.org/
MASTER_SITES=	http://ibiblio.org/pub/Linux/ALPHA/freetds/stable/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libiconv-prefix="${LOCALBASE}" \
		--disable-threadsafe \
		--disable-odbc
MAKE_ENV=	RM=rm
MODULES=	gettext

post-install:
	@sed -e "s:@sysconfdir@:${SYSCONFDIR}:g" ${WRKSRC}/freetds.conf > \
		${WRKSRC}/freetds.conf.new
	@mkdir ${PREFIX}/share/examples/freetds
	${INSTALL_DATA} ${WRKSRC}/freetds.conf.new \
		${PREFIX}/share/examples/freetds/freetds.conf-sample
	${INSTALL_DATA} ${WRKSRC}/src/pool/pool.conf \
		${PREFIX}/share/examples/freetds/pool.conf-sample

.include <bsd.port.mk>
