# $OpenBSD: Makefile,v 1.6 2001/11/01 02:40:55 jcs Exp $

DISTNAME=	freetds-0.52
CATEGORIES=	databases
NEED_VERSION=	1.433

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"project to document and implement the TDS protocol"
HOMEPAGE=	http://www.freetds.org/
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= ALPHA/freetds
EXTRACT_SUFX=	.tgz

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--enable-dbmfix
MAKE_ENV=	RM=rm

post-install:
	@sed -e "s:@sysconfdir@:${SYSCONFDIR}:g" ${WRKSRC}/freetds.conf > \
		${WRKSRC}/freetds.conf.new
	@mkdir ${PREFIX}/share/examples/freetds
	${INSTALL_DATA} ${WRKSRC}/freetds.conf.new \
		${PREFIX}/share/examples/freetds/freetds.conf-sample

.include <bsd.port.mk>
