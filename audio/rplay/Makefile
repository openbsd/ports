# $OpenBSD: Makefile,v 1.22 2002/10/24 22:20:03 naddy Exp $

COMMENT=	"network audio player"
DISTNAME=	rplay-3.3.2
CATEGORIES=	audio

HOMEPAGE=	http://rplay.doit.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/dist/

LIB_DEPENDS=	gsm.1.0::audio/gsm
 
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cd ${WRKSRC}/doc && mv rplay.texi rplayd.texi

post-configure:
.for ff in rplay.conf.5 rplay.helpers.5 rplay.hosts.5 rplayd.8
	@cd ${WRKSRC}/doc; \
		sed -e "s,/usr/local/etc,${SYSCONFDIR},g" ${ff} >${ff}.tmp; \
		mv ${ff}.tmp ${ff}
.endfor

NO_REGRESS=	Yes

.include <bsd.port.mk>
