# $OpenBSD: Makefile,v 1.4 2015/05/15 07:37:14 jasper Exp $

COMMENT=	collect logs locally in preparation for processing elsewhere

GH_ACCOUNT=	elastic
GH_PROJECT=	logstash-forwarder
GH_TAGNAME=	v0.4.0
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME:S/v//}

MODULES=	lang/go

NO_TEST=	Yes

WANTLIB +=	c pthread

do-build:
	cd ${WRKSRC} && go build -o logstash-forwarder

pre-configure:
	${SUBST_CMD} ${WRKSRC}/logstash-forwarder.conf.example

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/logstash-forwarder ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/README.md \
		${PREFIX}/share/doc/logstash-forwarder/
	${INSTALL_DATA} ${WRKSRC}/logstash-forwarder.conf.example \
		${PREFIX}/share/examples/logstash-forwarder/

.include <bsd.port.mk>
