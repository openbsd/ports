# $OpenBSD: gettext.port.mk,v 1.17 2017/11/19 16:17:16 naddy Exp $

# The RUN_DEPENDS entry is to ensure gettext is installed. This is
# necessary so that we have locale.alias installed on static archs.
# Typically installed in PREFIX/share/locale.
LIB_DEPENDS +=		devel/gettext>=0.10.38 converters/libiconv
RUN_DEPENDS +=		devel/gettext>=0.10.38
WANTLIB +=		intl>=5 iconv>=6
