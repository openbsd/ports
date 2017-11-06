# $OpenBSD: gettext.port.mk,v 1.15 2017/11/06 20:43:22 naddy Exp $

_MODGETTEXT_SPEC =		devel/gettext>=0.10.38

# The RUN_DEPENDS entry is to ensure gettext is installed. This is
# necessary so that we have locale.alias installed on static archs.
# Typically installed in PREFIX/share/locale.
LIB_DEPENDS +=		${_MODGETTEXT_SPEC} converters/libiconv
BUILD_DEPENDS +=	${_MODGETTEXT_SPEC}
RUN_DEPENDS +=		${_MODGETTEXT_SPEC}
WANTLIB +=		intl>=5 iconv>=6

# Always provide the development tools: msgfmt(1) etc.
BUILD_DEPENDS +=	devel/gettext-tools
