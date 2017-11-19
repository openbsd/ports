# $OpenBSD: gettext.port.mk,v 1.18 2017/11/19 20:01:13 naddy Exp $

LIB_DEPENDS +=		devel/gettext>=0.10.38 converters/libiconv
WANTLIB +=		intl>=5 iconv>=6
