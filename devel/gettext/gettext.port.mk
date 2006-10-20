# $OpenBSD: gettext.port.mk,v 1.4 2006/10/20 14:15:24 naddy Exp $

LIB_DEPENDS+=	iconv.>=4::converters/libiconv

# The RUN_DEPENDS entry is to ensure gettext is installed. This is
# necessary so that we have locale.alias installed on static archs.
# Typically installed in PREFIX/share/locale.
LIB_DEPENDS+=	intl.>=3:gettext->=0.10.38:devel/gettext
BUILD_DEPENDS+=	:gettext->=0.14.6:devel/gettext
RUN_DEPENDS+=	:gettext->=0.10.38:devel/gettext
