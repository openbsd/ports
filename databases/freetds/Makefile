# $OpenBSD: Makefile,v 1.8 2002/05/13 18:50:38 espie Exp $

DISTNAME=	freetds-0.53
CATEGORIES=	databases
NEED_VERSION=	1.503

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"project to document and implement the TDS protocol"
HOMEPAGE=	http://www.freetds.org/
MASTER_SITES=	${MASTER_SITE_SUNSITE:=ALPHA/freetds/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	Joshua Stein <jcs@rt.fm>

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libiconv-prefix="${LOCALBASE}"
MAKE_ENV=	RM=rm
MODULES=	gettext

post-configure:
	@chmod 644 ${WRKSRC}/include/tds_configs.h

post-install:
	@sed -e "s:@sysconfdir@:${SYSCONFDIR}:g" ${WRKSRC}/freetds.conf > \
		${WRKSRC}/freetds.conf.new
	@mkdir ${PREFIX}/share/examples/freetds
	${INSTALL_DATA} ${WRKSRC}/freetds.conf.new \
		${PREFIX}/share/examples/freetds/freetds.conf-sample

.include <bsd.port.mk>
