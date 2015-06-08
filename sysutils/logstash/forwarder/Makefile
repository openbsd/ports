# $OpenBSD: Makefile,v 1.5 2015/06/08 09:17:04 czarkoff Exp $

COMMENT=	collect logs locally in preparation for processing elsewhere

GH_ACCOUNT=	elastic
GH_PROJECT=	logstash-forwarder
GH_TAGNAME=	v0.4.0
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME:S/v//}
REVISION=	0

MODULES=	lang/go

NO_TEST=	Yes

WANTLIB +=	c pthread

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/logstash-forwarder \
		${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/README.md \
		${PREFIX}/share/doc/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/logstash-forwarder.conf.example \
		${PREFIX}/share/examples/logstash-forwarder/

.include <bsd.port.mk>
