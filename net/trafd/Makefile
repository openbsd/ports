# $FreeBSD: ports/net/trafd/Makefile,v 1.4 2000/07/07 19:22:10 steve Exp $
# $OpenBSD: Makefile,v 1.6 2002/09/01 19:10:31 mpech Exp $

COMMENT=	"BPF traffic collector"

DISTNAME=	trafd-3.0.1
CATEGORIES=	net
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.riss-telecom.ru/pub/dev/trafd/
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trafd/trafd ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/trafd/trafstop ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/trafd/trafsave ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/trafd/trafdump ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/trafstat/trafstat ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/trafstatd/trafstatd ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/traflog/traflog ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/trafd
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/trafd/README
	${INSTALL_DATA} ${WRKSRC}/traflog/traflog.format \
		${PREFIX}/share/doc/trafd/traflog.format.sample
	${INSTALL_DATA} ${WRKSRC}/trafd/trafstart \
		${PREFIX}/share/doc/trafd/trafstart

.include <bsd.port.mk>
