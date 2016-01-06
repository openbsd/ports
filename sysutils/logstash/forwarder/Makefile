# $OpenBSD: Makefile,v 1.7 2016/01/06 20:02:19 jasper Exp $

COMMENT=	collect logs locally in preparation for processing elsewhere

GH_ACCOUNT=	elastic
GH_PROJECT=	logstash-forwarder
GH_TAGNAME=	v0.4.0
REVISION=	1

MODULES=	lang/go

NO_TEST=	Yes

WANTLIB +=	c pthread

pre-configure:
	${SUBST_CMD} ${WRKSRC}/logstash-forwarder.conf.example

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/logstash-forwarder \
		${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/README.md \
		${PREFIX}/share/doc/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/logstash-forwarder.conf.example \
		${PREFIX}/share/examples/logstash-forwarder/

.include <bsd.port.mk>
