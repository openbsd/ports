# $OpenBSD: Makefile,v 1.13 2017/06/02 17:52:05 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.4.1

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
