# $OpenBSD: Makefile,v 1.11 2017/05/27 13:55:59 ajacoutot Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.4.0
REVISION =	0

GH_ACCOUNT =	elastic
GH_PROJECT =	beats
GH_TAGNAME =	v${VERSION}

CONFIGS =	filebeat.yml filebeat.template.json \
		filebeat.template-es2x.json \
		filebeat.template-es6x.json \
		README.md

WANTLIB +=	c pthread

pre-configure:
	cp -R ${WRKDIST}/metricbeat/ ${WRKSRC}/../

.include <bsd.port.mk>
