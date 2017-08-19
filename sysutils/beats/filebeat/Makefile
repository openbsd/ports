# $OpenBSD: Makefile,v 1.17 2017/08/19 12:54:55 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.5.2

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
