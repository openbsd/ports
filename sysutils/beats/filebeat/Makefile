# $OpenBSD: Makefile,v 1.8 2017/04/27 09:14:40 jasper Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.3.1

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json \
		filebeat.template-es2x.json README.md

WANTLIB +=	c pthread

pre-configure:
	cp -R ${WRKDIST}/metricbeat/ ${WRKSRC}/../

.include <bsd.port.mk>
