# $OpenBSD: gettext.port.mk,v 1.4 2001/10/11 15:48:00 brad Exp $

# The RUN_DEPENDS entry is to ensure gettext is
# installed. This is needed so we have locale.alias
# on static archs.
# Typically installed in PREFIX/share/locale.
LIB_DEPENDS+=	intl.1:gettext->=0.10.38:devel/gettext
BUILD_DEPENDS+=	:gettext->=0.10.38:devel/gettext
RUN_DEPENDS+=	:gettext->=0.10.38:devel/gettext
