# $OpenBSD: Makefile,v 1.12 2003/05/18 16:57:18 jcs Exp $

DISTNAME=	freetds-0.61
PKGNAME=	${DISTNAME}p1
CATEGORIES=	databases

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"project to document and implement the TDS protocol"
HOMEPAGE=	http://www.freetds.org/
MASTER_SITES=	http://ibiblio.org/pub/Linux/ALPHA/freetds/stable/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Joshua Stein <jcs@rt.fm>

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libiconv-prefix="${LOCALBASE}"
MAKE_ENV=	RM=rm
MODULES=	gettext

#post-configure:
#	@chmod 644 ${WRKSRC}/include/tds_configs.h

post-install:
	@sed -e "s:@sysconfdir@:${SYSCONFDIR}:g" ${WRKSRC}/freetds.conf > \
		${WRKSRC}/freetds.conf.new
	@mkdir ${PREFIX}/share/examples/freetds
	${INSTALL_DATA} ${WRKSRC}/freetds.conf.new \
		${PREFIX}/share/examples/freetds/freetds.conf-sample

.include <bsd.port.mk>
