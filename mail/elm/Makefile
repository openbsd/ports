# $OpenBSD: Makefile,v 1.10 2000/07/14 22:52:08 espie Exp $

DISTNAME=	elm-2.4ME+66
CATEGORIES=	mail
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.ozone.fmi.fi/KEH/

MAINTAINER=	pjanzen@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS+= -S -d
CONFIGURE_ENV+=	PREFIX='$${DESTDIR}${PREFIX}'
SCRIPTS_ENV=	OPSYS="${OPSYS}"

WRKDIST=	${WRKDIR}/elm2.4.ME+.66

pre-configure:
	@cp ${FILESDIR}/config.sh ${WRKSRC}
	@cp ${FILESDIR}/elm.mimecharsets ${WRKSRC}/bin
	@sed -e s,/usr/local,${PREFIX}, ${WRKSRC}/nls/LANGS > ${WRKSRC}/nls/LANGS.new
	@mv ${WRKSRC}/nls/LANGS.new ${WRKSRC}/nls/LANGS

post-configure:
	@perl -pi.bak -e 's,\$${DESTDIR},,g;' \
		${WRKBUILD}/config.h ${WRKBUILD}/hdrs/sysdefs.h \
		${WRKBUILD}/utils/{checkalias,listalias,messages,printmail}
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
