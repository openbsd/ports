# $OpenBSD: Makefile,v 1.18 2017/10/09 20:19:38 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.6.2

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json \
		filebeat.template-es2x.json \
		filebeat.template-es6x.json \
		README.md

BEATS_MODULES =	Yes

WANTLIB +=	c pthread

pre-configure:
	cp -R ${WRKDIST}/metricbeat/ ${WRKSRC}/../

.include <bsd.port.mk>
