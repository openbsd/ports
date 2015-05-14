# $OpenBSD: Makefile,v 1.2 2015/05/14 12:28:48 jasper Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	collect logs locally in preparation for processing elsewhere

# git clone as of 19812cfa7e
DISTNAME=	logstash-forwarder-0.3.1.1
REVISION=	0

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	lang/go

NO_TEST=	Yes

WANTLIB +=	c pthread

pre-configure:
	${SUBST_CMD} ${WRKSRC}/logstash-forwarder.conf.example

do-build:
	cd ${WRKSRC} && go build -o logstash-forwarder

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/logstash-forwarder ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/README.md \
		${PREFIX}/share/doc/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/logstash-forwarder.conf.example \
		${PREFIX}/share/examples/logstash-forwarder/

.include <bsd.port.mk>
