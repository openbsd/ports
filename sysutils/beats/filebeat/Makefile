# $OpenBSD: Makefile,v 1.12 2017/05/27 19:57:07 ajacoutot Exp $

COMMENT =	lightweight shipper for log file data

BEAT =		filebeat
VERSION =	5.4.0
REVISION =	1

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
