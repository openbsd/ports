# $OpenBSD: Makefile,v 1.3 1998/07/02 11:10:16 form Exp $
# NetBSD: Makefile,v 1.6 1998/04/15 11:15:34 frueauf Exp
#

DISTNAME=		icb-5.0.9
CATEGORIES=		net
MASTER_SITES=		ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/

MAINTAINER=		form@vs.itam.nsc.ru

do-configure:
	@cd ${WRKSRC}; \
	${SED} -e s,@PREFIX@,${PREFIX},g ${FILESDIR}/config >${WRKSRC}/config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/icb/icb ${PREFIX}/bin
	@if [ ! -d /etc/icb ]; then \
		${INSTALL} -d /etc/icb; \
		${INSTALL_SCRIPT} ${WRKSRC}/sample.icbrc \
			${WRKSRC}/contrib/bartender \
			${WRKSRC}/contrib/confuse \
			${WRKSRC}/contrib/echofile \
			/etc/icb; \
		${INSTALL_SCRIPT} ${WRKSRC}/icbserverdb /etc/icb; \
		chmod 644 /etc/icb/*; \
	fi

.include <bsd.port.mk>
