# $OpenBSD: Makefile,v 1.6 2000/03/24 22:11:47 espie Exp $

DISTNAME=	elm-2.4ME+66
CATEGORIES=	mail
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.ozone.fmi.fi/KEH/

MAINTAINER=	pjanzen@openbsd.org

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS+= -S -d
CONFIGURE_ENV+=	PREFIX="${PREFIX}"
SCRIPTS_ENV=	OPSYS="${OPSYS}"

WRKDIST=	${WRKDIR}/elm2.4.ME+.66

pre-configure:
	@cp ${FILESDIR}/config.sh ${WRKSRC}
	@cp ${FILESDIR}/elm.mimecharsets ${WRKSRC}/bin
	@sed -e s,/usr/local,${PREFIX}, ${WRKSRC}/nls/LANGS > ${WRKSRC}/nls/LANGS.new
	@mv ${WRKSRC}/nls/LANGS.new ${WRKSRC}/nls/LANGS

post-install:
	@cd ${WRKSRC}/nls; make install
	if [ -f ${PREFIX}/lib/elm.mimetypes ]; then \
		${INSTALL_DATA} \
			${FILESDIR}/elm.mimetypes ${PREFIX}/lib/elm.mimetypes-dist; \
	else \
		${INSTALL_DATA} \
			${FILESDIR}/elm.mimetypes ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>
